# ���õ�VIM����

## ����

```
:sp filename " ���·���
:vsp filename " ���ҷ���
```

�رյ�ǰ���ڣ��������У�

```
ctrl+w c
```

�ƶ�����

```
ctrl+w h/j/k/l
```

## ִ���ⲿ����

��vim�У�����ִ��git��npm�����������ģʽ�£�����`!`���ɣ���

```
!npm run develop
!git add .
```

## ���ǩҳ��

```
:tabe / :tabnew �½�һ����ǩҳ
:tabo / :tabonly :tabe / :tabnew �½�һ����ǩҳ
:tabc / :tabclose �رյ�ǰ��ǩҳ
:tabn / :tabl / :tabfir / :tabN ��ǩҳ�л�
```

## �����Լ����õĿ�ݼ�

### f5

һ������`npm run develop`��������vim�д�һ������������¼���еĽ����

ԭ������exe��vim��ִ������������ùܵ�����ȡ�ⲿ�������еĽ����ʹ��new����һ�������������ͨ��������������

```
" ִ��npm run develop��Ч����ִ��֮�󣬽�log��vim�Ļ�����
function BuildProject ()
    exe 'new | setlocal buftype=nofile bufhidden=hide | read !npm run develop '
endfunction
nmap <silent><F5> :call BuildProject()<CR>
```


