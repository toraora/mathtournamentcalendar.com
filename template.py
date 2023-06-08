event_template = '''
     <div class="event">
        <div class="date">{date}</div>
        <span class="title" onclick='toggle("{idx}");'>{name}</span>
        <span class="location">{location}</span>
        <div class="description" id="{idx}" style="display: none">
          <a href="{display_url}" rel="nofollow">{url}</a>

          {description}
        </div>
      </div>
'''

import datetime
import glob
import yaml

show_after = (datetime.datetime.today() - datetime.timedelta(days = 30)).strftime('%Y-%m-%d')

idx = 0
fill = ''

for fname in sorted(glob.glob('./events/*.yaml')):
    date = fname.split('/')[-1][:10]
    if date < show_after:
        continue
    f = open(fname, 'r')
    event = yaml.safe_load(f)
    if 'display_url' not in event:
        event['display_url'] = event['url']
    fill += '\n' + event_template.format(idx=idx, **event)
    idx += 1

html_template = open('index.html.tpl', 'r').read()
out_file = open('index.html', 'w')

replace = '<!-- event data here -->'
out_file.write(html_template.replace(replace, fill))
