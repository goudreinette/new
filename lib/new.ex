defmodule New do
  import System
  import Enum, only: [at: 2, join: 2, map: 2]
  import Path, only: [dirname: 1, basename: 1]

  def main(args) do
    scaffold(at(args, 0), at(args, 1))
  end

  def scaffold(template, target) do
    copy_template(template, target)
    replace_name!(target, target)
  end

  def copy_template(template, target) do
    File.cp_r!(template_path(template), target_path(target))
  end

  def template_path(template) do
    # FIXME
    "/home/reinvdwoerd/Documents/new/templates/#{template}"
  end

  def target_path(target) do
    "#{cwd()}/#{target}"
  end

  def replace_name!(path, name) do
    DirWalker.stream(target_path(path))
    |> Enum.map(&replace_name(&1, name))
  end

  def replace_name(path, name) do
    content = EEx.eval_file(path, bindings(name))
    newpath = replace_path(path, bindings(name))

    IO.inspect([newpath, content])
    File.rm_rf(path)
    File.write!(newpath, content)
  end

  def replace_path(path, bindings) do
    filename = basename(path) |> EEx.eval_string(bindings)
    Path.join(dirname(path), filename)
  end

  def bindings(name) do
    [name: name,
     title: title_case(name),
     pascal: pascal_case(name)]
  end

  def title_case(string) do
    string
    |> capitalize_parts
    |> join(" ")
  end

  def pascal_case(string) do
    string
    |> capitalize_parts
    |> join("")
  end

  def capitalize_parts(string) do
    string
    |> String.split(["-", "_"])
    |> map(&String.capitalize/1)
  end
end
