import { mount } from '@vue/test-utils'
import Head from '@/components/Head.vue'

describe('Head', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(Head)
    expect(wrapper.vm).toBeTruthy()
  })
})
