const db = require('../db')
const { formatMoney } = require('../utils')

module.exports = async (user) => {
    if (!user) {
        console.log('anda harus login terlebih dahulu!');
        process.exit(1);
    }

    try {
        const [rows] = await db.query('SELECT balance FROM accounts WHERE id = ?', [user.id])
        console.log(`saldo anda: ${formatMoney(rows[0].balance)}`)
        process.exit(0)
    } catch (err) {
        console.error('gagal memeriksa saldo:', err);
        process.exit(1)
    }
};