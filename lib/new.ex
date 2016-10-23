defmodule New do
  import System
  import Enum, only: [at: 2, join: 2, map: 2]

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
    "#{cwd()}/templates/#{template}"
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

    IO.inspect([path, content])
    File.write!(path, content)
  end

  def bindings(name) do
    [name: name,
     title: title_case(name)
    ]
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
    String.split(string, "-")
    |> map(&String.capitalize/1)
  end
end
