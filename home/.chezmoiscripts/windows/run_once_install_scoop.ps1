if (!(Get-Command scoop -errorAction SilentlyContinue))
{
  iwr -useb get.scoop.sh | iex
}
