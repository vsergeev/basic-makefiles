<html>
<body>
<table>
<th colspan="${columns}"><h2>Wallpaper Gallery</h2></th>
% for row in range(len(items) // columns + 1):
<tr>
%   for image in items[row * columns:(row + 1) * columns]:
<td>
<a href="${image.filename}"><img src="${image.thumbnail}"></a>
<center><tt>${image.filename}</tt></center>
</td>
%   endfor
</tr>
% endfor
</table>
</body>
</html>
