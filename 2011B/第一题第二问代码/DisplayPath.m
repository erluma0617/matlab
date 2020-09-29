% DisplayPath.m 打印路径函数
function DisplayPath(route, start, dest)
  % 打印出任意两点之间的最短路径 
  % route : 路由矩阵 
  % start : 起点index
  % dest : 终点index

  while 1
    if(route(start, dest) ~= dest)
      fprintf('A%s -> ', num2str(start));
      start = route(start, dest);
    else
      fprintf('A%s -> ', num2str(start));
      fprintf('A%s\n', num2str(dest));
      break;
    end
  end
