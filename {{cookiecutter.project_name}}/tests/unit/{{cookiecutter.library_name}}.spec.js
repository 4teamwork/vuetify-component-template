import {{cookiecutter.component_name}} from '@/components/{{cookiecutter.component_name}}.vue';
import { localMount } from './support';

describe('{{cookiecutter.component_name}}', () => {
  test('Component renders', async () => {
    const w = await localMount({{cookiecutter.component_name}});
    expect(w.exists()).toBe(true);
  });
});
