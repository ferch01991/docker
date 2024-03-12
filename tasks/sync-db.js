let times = 0;

const syncDB = () => {
    times++;
    console.log('Tick cada multiplos de 5:', times);

    return times;
}

module.exports = {
    syncDB
}