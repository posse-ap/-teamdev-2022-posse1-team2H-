const prefix = "http://localhost/modules/api";

const userPrefix = `${prefix}/user`;
// TOPページのagency呼び出し
const getAgenciesForFirstView = async() => {
    // TODO ローディング表示
    await axios(`${userPrefix}/firstView.php`).then((res) => {
        console.log(res.data);
    });
};

const handleSearch = async() => {
    let industries = [];
    let types = [];
    const industriesTarget = document.getElementsByName("industries");
    const typesTarget = document.getElementsByName("types");
    industriesTarget.forEach((industry) => {
        if (industry.checked === true) industries.push(industry.value);
    });
    typesTarget.forEach((type) => {
        if (type.checked === true) types.push(type.value);
    });
    const { data } = await searchAgencies(types, industries);
    console.log(data);
};

const searchAgencies = async(types, industries) => {
    types = types.length === 0 ? null : types.join();
    industries = industries.length === 0 ? null : industries.join();
    const params = {
        types: types,
        industries: industries,
    };
    const res = await axios.get(`${userPrefix}/searchAgencies.php`, {
        params: params,
    });

    return {
        data: res.data,
        stauts: res.status,
    };
};

const getFavs = async() => {
    const agencyIds = sessionStorage.getItem("ids");
    const params = {
        agency_ids: agencyIds,
    };
    const res = await axios.get(`${userPrefix}/fav.php`, {
        params: params,
    });
    console.log(res.data);
};

const appearing = (appearing) => {
    document.getElementById(appearing).classList.toggle("appearing");
};

const appearSidebar = () => {
    appearing("serach_content");
};

const appearIndustryTypes = () => {
    appearing("business_type_items");
};

const appearTypes = () => {
    appearing("business_features");
};

const handleClickStar = (agencyId) => {
    toggleColor(agencyId);
    saveFav(agencyId);
};

const toggleColor = (agencyId) => {
    let target = document.getElementById(`star_${agencyId}`);
    target.classList.toggle("toggle_star");
};

const saveFav = (agencyId) => {
    let agencyIds = readFav();
    if (agencyIds === undefined) {
        agencyIds = [];
    }
    if (!agencyIds.includes(agencyId)) {
        agencyIds.push(agencyId);
    } else {
        agencyIds.splice(agencyIds.indexOf(agencyId), 1);
    }
    sessionStorage.setItem("ids", agencyIds);
};

const readFav = () => {
    let agencyIds = sessionStorage.getItem("ids");
    if (agencyIds) {
        agencyIds = agencyIds.split(",");
        agencyIds = agencyIds.map((x) => Number(x));
        return agencyIds;
    }
};

const deleteFav = () => {
    sessionStorage.removeItem("ids");
};

const changeStarsColor = () => {
    const ids = readFav();
    for (let i = 0; i < ids.length; i++) {
        toggleColor(ids[i]);
    }
};

window.onload = () => {
    let userTop = document.getElementById("user_top");
    if (userTop) userTop.onload = getAgenciesForFirstView();
    getFavs();
    changeStarsColor();
};