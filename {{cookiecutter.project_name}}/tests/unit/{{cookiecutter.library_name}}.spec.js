import {{cookiecutter.component_name}} from '@/components/{{cookiecutter.component_name}}.vue';
import { localMount } from './support';
import Vue from 'vue';

describe('{{cookiecutter.component_name}}', () => {
  test('Component renders', async () => {
    const w = await localMount({{cookiecutter.component_name}});
    expect(w.exists()).toBe(true);
  });
});
