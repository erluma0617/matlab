% DisplayPath.m ��ӡ·������
function DisplayPath(route, start, dest)
  % ��ӡ����������֮������·�� 
  % route : ·�ɾ��� 
  % start : ���index
  % dest : �յ�index

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
