function  paint(cities, minRoute, minLen, iter)
    gNumber=iter;
    length = size(cities,2);
    xDots = cities(1,:);
    yDots = cities(2,:);
    %figure(1);
    title('ACO TSP');
    plot(xDots,yDots, 'o', 'MarkerSize', 14, 'MarkerFaceColor', 'blue');
    xlabel('经度');
    ylabel('纬度');
    axis equal
    hold on
    bestPopPath = minRoute;
    bestX = zeros(1,length);
    bestY = zeros(1,length);
    for j=1:length
       bestX(1,j) = cities(1,bestPopPath(1,j));
       bestY(1,j) = cities(2,bestPopPath(1,j));
    end
    title('ACO TSP');
    plot(bestX(1,:),bestY(1,:), 'red', 'LineWidth', 1.25);
    legend('城市', '路径');
    axis equal
    grid on
    fprintf('迭代次数: %d 总路径长度: %.2f\n',gNumber, minLen);
    drawnow
    hold off
end