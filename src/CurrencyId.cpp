#include <QuantKit/CurrencyId.h>

#include <boost/multi_index_container.hpp>
#include <boost/multi_index/hashed_index.hpp>
#include <boost/multi_index/ordered_index.hpp>
#include <boost/multi_index/member.hpp>
#include <boost/multi_index/tag.hpp>

#include "quantkit_boost.h"

namespace QuantKit {

class CurrencyItem {
public:
	QString name;
	unsigned char code;
	CurrencyItem(const QString& currency, unsigned char id) : name(currency), code(id)  {}
};
struct by_name{};
struct by_code{};

typedef boost::multi_index::multi_index_container<
  CurrencyItem,
  boost::multi_index::indexed_by<
    boost::multi_index::hashed_unique<
      boost::multi_index::tag<by_name>,
      boost::multi_index::member<
        CurrencyItem, QString, &CurrencyItem::name
      >
    >,
    boost::multi_index::hashed_unique<
      boost::multi_index::tag<by_code>,
      boost::multi_index::member<
        CurrencyItem, unsigned char, &CurrencyItem::code
      >
    >
  >
> CurrencyIdContainer;

typedef CurrencyIdContainer::index<by_name>::type CurrencyId_by_name;
typedef CurrencyIdContainer::index<by_code>::type CurrencyId_by_code;

static CurrencyIdContainer currencyIds = {
	{"AED", 1},
	{"AFN", 2},
	{"ALL", 3},
	{"AMD", 4},
	{"ANG", 5},
	{"AOA", 6},
	{"ARS", 7},
	{"AUD", 8},
	{"AWG", 9},
	{"AZN", 10},
	{"BAM", 11},
	{"BBD", 12},
	{"BDT", 13},
	{"BGN", 14},
	{"BHD", 15},
	{"BIF", 16},
	{"BMD", 17},
	{"BND", 18},
	{"BOB", 19},
	{"BRL", 20},
	{"BSD", 21},
	{"BTN", 22},
	{"BWP", 23},
	{"BYR", 24},
	{"BZD", 25},
	{"CAD", 26},
	{"CDF", 27},
	{"CHF", 28},
	{"CLP", 29},
	{"CNY", 30},
	{"COP", 31},
	{"CRC", 32},
	{"CUC", 33},
	{"CUP", 34},
	{"CVE", 35},
	{"CZK", 36},
	{"DJF", 37},
	{"DKK", 38},
	{"DOP", 39},
	{"DZD", 40},
	{"EGP", 41},
	{"ERN", 42},
	{"ETB", 43},
	{"EUR", 44},
	{"FJD", 45},
	{"FKP", 46},
	{"GBP", 47},
	{"GEL", 48},
	{"GGP", 49},
	{"GHS", 50},
	{"GIP", 51},
	{"GMD", 52},
	{"GNF", 53},
	{"GTQ", 54},
	{"GYD", 55},
	{"HKD", 56},
	{"HNL", 57},
	{"HRK", 58},
	{"HTG", 59},
	{"HUF", 60},
	{"IDR", 61},
	{"ILS", 62},
	{"IMP", 63},
	{"INR", 64},
	{"IQD", 65},
	{"IRR", 66},
	{"ISK", 67},
	{"JEP", 68},
	{"JMD", 69},
	{"JOD", 70},
	{"JPY", 71},
	{"KES", 72},
	{"KGS", 73},
	{"KHR", 74},
	{"KMF", 75},
	{"KPW", 76},
	{"KRW", 77},
	{"KWD", 78},
	{"KYD", 79},
	{"KZT", 80},
	{"LAK", 81},
	{"LBP", 82},
	{"LKR", 83},
	{"LRD", 84},
	{"LSL", 85},
	{"LTL", 86},
	{"LYD", 87},
	{"MAD", 88},
	{"MDL", 89},
	{"MGA", 90},
	{"MKD", 91},
	{"MMK", 92},
	{"MNT", 93},
	{"MOP", 94},
	{"MRO", 95},
	{"MUR", 96},
	{"MVR", 97},
	{"MWK", 98},
	{"MXN", 99},
	{"MYR", 100},
	{"MZN", 101},
	{"NAD", 102},
	{"NGN", 103},
	{"NIO", 104},
	{"NOK", 105},
	{"NPR", 106},
	{"NZD", 107},
	{"OMR", 108},
	{"PAB", 109},
	{"PEN", 110},
	{"PGK", 111},
	{"PHP", 112},
	{"PKR", 113},
	{"PLN", 114},
	{"PYG", 115},
	{"QAR", 116},
	{"RON", 117},
	{"RSD", 118},
	{"RUB", 119},
	{"RWF", 120},
	{"SAR", 121},
	{"SBD", 122},
	{"SCR", 123},
	{"SDG", 124},
	{"SEK", 125},
	{"SGD", 126},
	{"SHP", 127},
	{"SLL", 128},
	{"SOS", 129},
	{"SPL", 130},
	{"SRD", 131},
	{"STD", 132},
	{"SVC", 133},
	{"SYP", 134},
	{"SZL", 135},
	{"THB", 136},
	{"TJS", 137},
	{"TMT", 138},
	{"TND", 139},
	{"TOP", 140},
	{"TRY", 141},
	{"TTD", 142},
	{"TVD", 143},
	{"TWD", 144},
	{"TZS", 145},
	{"UAH", 146},
	{"UGX", 147},
	{"USD", 148},
	{"UYU", 149},
	{"UZS", 150},
	{"VEF", 151},
	{"VND", 152},
	{"VUV", 153},
	{"WST", 154},
	{"XAF", 155},
	{"XCD", 156},
	{"XDR", 157},
	{"XOF", 158},
	{"XPF", 159},
	{"YER", 160},
	{"ZAR", 161},
	{"ZMW", 162},
	{"ZWD", 163},
	{"CNH", 201}
};

static QString nullstring = QString();

unsigned char CurrencyId::GetId(const QString& name)
{
    CurrencyId_by_name& index = currencyIds.get<by_name>();
    CurrencyId_by_name::iterator it = index.find(name);
    if (it != index.end())
        return it->code;
    else
        return 0;
}

const QString& CurrencyId::GetName(unsigned char id)
{
    CurrencyId_by_code& index = currencyIds.get<by_code>();
    CurrencyId_by_code::iterator it = index.find(id);
    if (it != index.end())
        return it->name;
    else
        return nullstring;
}

} // namespace QuantKit
