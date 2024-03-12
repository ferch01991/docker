const { syncDB } = require("../../tasks/sync-db")

describe('Pruebas en sync-DB', () => {
    test('debe ejecutar el proceso 2 veces', () => { 
        syncDB()
        const times = syncDB();

        expect(times).toBe(2)
     })
})