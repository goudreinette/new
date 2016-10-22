defmodule New do
  import System

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
    DirWalker.stream(path)
    |> Enum.map(&replace_name(&1, name))
  end

  def replace_name(path, name) do
    content = File.read!(path)
    newcontent = String.replace(content, "${name}", name)
    IO.inspect([path, content, newcontent])
    File.write!(path, newcontent)
  end
end

New.scaffold("elm", "mytest")
