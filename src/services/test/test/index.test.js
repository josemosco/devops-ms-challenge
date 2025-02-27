const request = require('supertest')
const app = require('../../../app')
describe('Example test', () => {
  it('This should send a test sms', async () => {
    const res = await request(app)
      .post('/ping')
      .send({
        message: 'Ping!'
      })
    expect(res.statusCode).toEqual(404)
  })
})
