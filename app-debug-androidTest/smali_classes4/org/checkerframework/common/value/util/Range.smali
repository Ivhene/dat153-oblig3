.class public Lorg/checkerframework/common/value/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BIG_LONG_MAX_VALUE:Ljava/math/BigInteger;

.field private static final BIG_LONG_MIN_VALUE:Ljava/math/BigInteger;

.field private static final BIG_LONG_WIDTH:Ljava/math/BigInteger;

.field public static final BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field private static final BYTE_WIDTH:J

.field public static final CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field private static final CHAR_WIDTH:J

.field public static final EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field public static final INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field private static final INT_WIDTH:J

.field public static final LONG_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field public static final NOTHING:Lorg/checkerframework/common/value/util/Range;

.field public static final SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

.field private static final SHORT_WIDTH:J

.field public static ignoreOverflow:Z


# instance fields
.field public final from:J

.field public final to:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    nop

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    .line 46
    const-wide/high16 v0, -0x8000000000000000L

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    sput-object v4, Lorg/checkerframework/common/value/util/Range;->LONG_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 49
    const-wide/32 v5, -0x80000000

    const-wide/32 v7, 0x7fffffff

    invoke-static {v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    sput-object v5, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 52
    const-wide/16 v6, -0x8000

    const-wide/16 v8, 0x7fff

    invoke-static {v6, v7, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    sput-object v6, Lorg/checkerframework/common/value/util/Range;->SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 55
    const-wide/16 v7, 0x0

    const-wide/32 v9, 0xffff

    invoke-static {v7, v8, v9, v10}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v7

    sput-object v7, Lorg/checkerframework/common/value/util/Range;->CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 58
    const-wide/16 v8, -0x80

    const-wide/16 v10, 0x7f

    invoke-static {v8, v9, v10, v11}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v8

    sput-object v8, Lorg/checkerframework/common/value/util/Range;->BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 61
    new-instance v9, Lorg/checkerframework/common/value/util/Range;

    invoke-direct {v9, v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;-><init>(JJ)V

    sput-object v9, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    .line 64
    sput-object v4, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 118
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_MIN_VALUE:Ljava/math/BigInteger;

    .line 120
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_MAX_VALUE:Ljava/math/BigInteger;

    .line 122
    nop

    .line 123
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_WIDTH:Ljava/math/BigInteger;

    .line 260
    invoke-direct {v5}, Lorg/checkerframework/common/value/util/Range;->width()J

    move-result-wide v0

    sput-wide v0, Lorg/checkerframework/common/value/util/Range;->INT_WIDTH:J

    .line 289
    invoke-direct {v6}, Lorg/checkerframework/common/value/util/Range;->width()J

    move-result-wide v0

    sput-wide v0, Lorg/checkerframework/common/value/util/Range;->SHORT_WIDTH:J

    .line 319
    invoke-direct {v7}, Lorg/checkerframework/common/value/util/Range;->width()J

    move-result-wide v0

    sput-wide v0, Lorg/checkerframework/common/value/util/Range;->CHAR_WIDTH:J

    .line 349
    invoke-direct {v8}, Lorg/checkerframework/common/value/util/Range;->width()J

    move-result-wide v0

    sput-wide v0, Lorg/checkerframework/common/value/util/Range;->BYTE_WIDTH:J

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0
    .param p1, "from"    # J
    .param p3, "to"    # J

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 77
    iput-wide p3, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    .line 78
    return-void
.end method

.method public static create(JJ)Lorg/checkerframework/common/value/util/Range;
    .locals 3
    .param p0, "from"    # J
    .param p2, "to"    # J

    .line 89
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 92
    new-instance v0, Lorg/checkerframework/common/value/util/Range;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/common/value/util/Range;-><init>(JJ)V

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid Range: %s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static create(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/checkerframework/common/value/util/Range;
    .locals 5
    .param p0, "bigFrom"    # Ljava/math/BigInteger;
    .param p1, "bigTo"    # Ljava/math/BigInteger;

    .line 142
    sget-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_MIN_VALUE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 144
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 147
    .local v0, "bigWidth":Ljava/math/BigInteger;
    sget-object v1, Lorg/checkerframework/common/value/util/Range;->BIG_LONG_WIDTH:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 148
    sget-object v1, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v1

    .line 151
    .end local v0    # "bigWidth":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 152
    .local v0, "longFrom":J
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 153
    .local v2, "longTo":J
    sget-object v4, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4
.end method

.method public static create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 104
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 107
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 108
    .local v0, "min":J
    move-wide v2, v0

    .line 109
    .local v2, "max":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 110
    .local v5, "value":Ljava/lang/Number;
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 111
    .local v6, "current":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    move-wide v0, v6

    .line 112
    :cond_1
    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    move-wide v2, v6

    .line 113
    .end local v5    # "value":Ljava/lang/Number;
    .end local v6    # "current":J
    :cond_2
    goto :goto_0

    .line 114
    :cond_3
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4
.end method

.method private static createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .param p0, "from"    # J
    .param p2, "to"    # J
    .param p4, "alternate"    # Lorg/checkerframework/common/value/util/Range;

    .line 165
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .line 166
    new-instance v0, Lorg/checkerframework/common/value/util/Range;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/common/value/util/Range;-><init>(JJ)V

    return-object v0

    .line 168
    :cond_0
    return-object p4
.end method

.method private static createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .param p0, "from"    # J
    .param p2, "to"    # J

    .line 181
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method private equalsRange(Lorg/checkerframework/common/value/util/Range;)Z
    .locals 4
    .param p1, "range"    # Lorg/checkerframework/common/value/util/Range;

    .line 226
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinHalfLong()Z
    .locals 4

    .line 1172
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    return v0
.end method

.method private noSignBit(Ljava/lang/Long;)J
    .locals 4
    .param p1, "mask"    # Ljava/lang/Long;

    .line 864
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private width()J
    .locals 4

    .line 190
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bitwiseAnd(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 10
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 798
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 807
    :cond_0
    const/4 v0, 0x0

    .line 808
    .local v0, "constant":Lorg/checkerframework/common/value/util/Range;
    const/4 v1, 0x0

    .line 809
    .local v1, "variable":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 810
    move-object v0, p1

    .line 811
    move-object v1, p0

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isConstant()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 813
    move-object v0, p0

    .line 814
    move-object v1, p1

    .line 817
    :cond_2
    :goto_0
    if-eqz v0, :cond_8

    .line 818
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 819
    .local v2, "mask":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_5

    .line 822
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    .line 824
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 825
    :cond_3
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v8, v6, v4

    if-gez v8, :cond_4

    .line 829
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/common/value/util/Range;->noSignBit(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 834
    :cond_4
    invoke-static {v4, v5, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 838
    :cond_5
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_6

    .line 841
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/checkerframework/common/value/util/Range;->noSignBit(Ljava/lang/Long;)J

    move-result-wide v6

    iget-wide v8, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 842
    :cond_6
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v4, v6, v4

    const-wide/high16 v8, -0x8000000000000000L

    if-gez v4, :cond_7

    .line 849
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 854
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/checkerframework/common/value/util/Range;->noSignBit(Ljava/lang/Long;)J

    move-result-wide v4

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 859
    .end local v2    # "mask":J
    :cond_8
    sget-object v2, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v2

    .line 799
    .end local v0    # "constant":Lorg/checkerframework/common/value/util/Range;
    .end local v1    # "variable":Lorg/checkerframework/common/value/util/Range;
    :cond_9
    :goto_1
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public bitwiseComplement()Lorg/checkerframework/common/value/util/Range;
    .locals 4

    .line 922
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 926
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    not-long v0, v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    not-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public bitwiseOr(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 869
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 870
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public bitwiseXor(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 878
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 879
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public byteRange()Lorg/checkerframework/common/value/util/Range;
    .locals 6

    .line 365
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    return-object p0

    .line 368
    :cond_0
    sget-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v0, :cond_1

    .line 369
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v2, -0x80

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/16 v4, 0x7f

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 371
    :cond_1
    sget-wide v0, Lorg/checkerframework/common/value/util/Range;->BYTE_WIDTH:J

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 375
    :cond_2
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    long-to-int v0, v0

    int-to-byte v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-long v2, v2

    sget-object v4, Lorg/checkerframework/common/value/util/Range;->BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public charRange()Lorg/checkerframework/common/value/util/Range;
    .locals 6

    .line 335
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    return-object p0

    .line 338
    :cond_0
    sget-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v0, :cond_1

    .line 339
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/32 v4, 0xffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 341
    :cond_1
    sget-wide v0, Lorg/checkerframework/common/value/util/Range;->CHAR_WIDTH:J

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 345
    :cond_2
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    long-to-int v0, v0

    int-to-char v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    long-to-int v2, v2

    int-to-char v2, v2

    int-to-long v2, v2

    sget-object v4, Lorg/checkerframework/common/value/util/Range;->CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public contains(J)Z
    .locals 2
    .param p1, "element"    # J

    .line 385
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lorg/checkerframework/common/value/util/Range;)Z
    .locals 4
    .param p1, "other"    # Lorg/checkerframework/common/value/util/Range;

    .line 395
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    return v0
.end method

.method public divide(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 17
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 551
    :cond_0
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 552
    sget-object v2, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v2

    .line 556
    :cond_1
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    const-wide/16 v8, -0x1

    if-nez v2, :cond_4

    invoke-virtual {v1, v8, v9}, Lorg/checkerframework/common/value/util/Range;->contains(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 563
    sget-object v2, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v2

    .line 564
    :cond_2
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v4, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 568
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 572
    :cond_3
    invoke-static {v6, v7, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 581
    :cond_4
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v6, v2, v4

    const-wide/16 v10, 0x1

    if-lez v6, :cond_7

    .line 582
    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_5

    .line 584
    iget-wide v4, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 585
    .local v2, "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .local v4, "resultTo":J
    goto/16 :goto_0

    .line 586
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_5
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    .line 588
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    div-long v2, v4, v2

    .line 589
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .restart local v4    # "resultTo":J
    goto/16 :goto_0

    .line 592
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_6
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    neg-long v2, v2

    .line 593
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    .restart local v4    # "resultTo":J
    goto/16 :goto_0

    .line 595
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_7
    iget-wide v6, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v12, v6, v4

    if-gez v12, :cond_a

    .line 596
    iget-wide v12, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v14, v12, v4

    if-ltz v14, :cond_8

    .line 598
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 599
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .restart local v4    # "resultTo":J
    goto :goto_0

    .line 600
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_8
    iget-wide v10, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v4, v10, v4

    if-gtz v4, :cond_9

    .line 602
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    div-long v2, v6, v2

    .line 603
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .restart local v4    # "resultTo":J
    goto :goto_0

    .line 606
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_9
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 607
    .local v4, "resultFrom":J
    neg-long v2, v2

    move-wide v15, v2

    move-wide v2, v4

    move-wide v4, v15

    .local v2, "resultTo":J
    goto :goto_0

    .line 610
    .end local v2    # "resultTo":J
    .end local v4    # "resultFrom":J
    :cond_a
    iget-wide v12, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v14, v12, v4

    if-ltz v14, :cond_b

    .line 612
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 613
    .local v2, "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .local v4, "resultTo":J
    goto :goto_0

    .line 614
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_b
    iget-wide v10, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v4, v10, v4

    if-gtz v4, :cond_c

    .line 616
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    div-long v2, v6, v2

    .line 617
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v6, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    div-long/2addr v4, v6

    .restart local v4    # "resultTo":J
    goto :goto_0

    .line 620
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_c
    neg-long v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 621
    .restart local v2    # "resultFrom":J
    iget-wide v4, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    neg-long v4, v4

    iget-wide v6, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 624
    .restart local v4    # "resultTo":J
    :goto_0
    invoke-static {v2, v3, v4, v5}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    return-object v6

    .line 549
    .end local v2    # "resultFrom":J
    .end local v4    # "resultTo":J
    :cond_d
    :goto_1
    sget-object v2, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 204
    if-ne p0, p1, :cond_0

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/common/value/util/Range;

    if-eqz v0, :cond_1

    .line 208
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 215
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intRange()Lorg/checkerframework/common/value/util/Range;
    .locals 6

    .line 276
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    return-object p0

    .line 279
    :cond_0
    sget-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v0, :cond_1

    .line 280
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    sget-wide v0, Lorg/checkerframework/common/value/util/Range;->INT_WIDTH:J

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 285
    :cond_2
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    long-to-int v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    long-to-int v2, v2

    int-to-long v2, v2

    sget-object v4, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public intersect(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 426
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 431
    .local v0, "resultFrom":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 432
    .local v2, "resultTo":J
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 427
    .end local v0    # "resultFrom":J
    .end local v2    # "resultTo":J
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public isByteEverything()Z
    .locals 1

    .line 251
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->BYTE_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0
.end method

.method public isCharEverything()Z
    .locals 1

    .line 246
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->CHAR_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0
.end method

.method public isConstant()Z
    .locals 4

    .line 1151
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIntEverything()Z
    .locals 1

    .line 236
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0
.end method

.method public isLongEverything()Z
    .locals 1

    .line 231
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->LONG_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .line 256
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortEverything()Z
    .locals 1

    .line 241
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/util/Range;->equalsRange(Lorg/checkerframework/common/value/util/Range;)Z

    move-result v0

    return v0
.end method

.method public isWiderThan(J)Z
    .locals 5
    .param p1, "value"    # J

    .line 1135
    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1139
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/Range;->width()J

    move-result-wide v3

    cmp-long v0, v3, p1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1141
    :cond_1
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v3, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 1142
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1143
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1144
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1141
    :goto_1
    return v1
.end method

.method public isWithin(JJ)Z
    .locals 2
    .param p1, "lb"    # J
    .param p3, "ub"    # J

    .line 1163
    cmp-long v0, p1, p3

    if-gtz v0, :cond_1

    .line 1164
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1163
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public isWithinInteger()Z
    .locals 4

    .line 1181
    const-wide/32 v0, -0x80000000

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    return v0
.end method

.method public max(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "other"    # Lorg/checkerframework/common/value/util/Range;

    .line 448
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public min(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "other"    # Lorg/checkerframework/common/value/util/Range;

    .line 440
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 489
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/Range;->isWithinHalfLong()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lorg/checkerframework/common/value/util/Range;->isWithinHalfLong()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    sub-long/2addr v0, v2

    .line 496
    .local v0, "resultFrom":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    sub-long/2addr v2, v4

    .line 497
    .local v2, "resultTo":J
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 499
    .end local v0    # "resultFrom":J
    .end local v2    # "resultTo":J
    :cond_1
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 500
    .local v0, "bigFrom":Ljava/math/BigInteger;
    iget-wide v1, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 501
    .local v1, "bigTo":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 490
    .end local v0    # "bigFrom":Ljava/math/BigInteger;
    .end local v1    # "bigTo":Ljava/math/BigInteger;
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public plus(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 8
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 460
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/Range;->isWithinHalfLong()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p1}, Lorg/checkerframework/common/value/util/Range;->isWithinHalfLong()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    add-long/2addr v2, v0

    .line 467
    .local v2, "resultFrom":J
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v6, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    add-long/2addr v6, v4

    .line 468
    .local v6, "resultTo":J
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 469
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 471
    :cond_1
    invoke-static {v2, v3, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 474
    .end local v2    # "resultFrom":J
    .end local v6    # "resultTo":J
    :cond_2
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 475
    .local v0, "bigFrom":Ljava/math/BigInteger;
    iget-wide v1, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 476
    .local v1, "bigTo":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 461
    .end local v0    # "bigFrom":Ljava/math/BigInteger;
    .end local v1    # "bigTo":Ljava/math/BigInteger;
    :cond_3
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public refineEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 1091
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/util/Range;->intersect(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public refineGreaterThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 1024
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1028
    :cond_0
    iget-wide v0, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 1029
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 1032
    :cond_1
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1033
    .local v0, "resultFrom":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 1025
    .end local v0    # "resultFrom":J
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public refineGreaterThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 4
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 1061
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1066
    .local v0, "resultFrom":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 1062
    .end local v0    # "resultFrom":J
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public refineLessThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 954
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    iget-wide v0, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 959
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 962
    :cond_1
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 963
    .local v0, "resultTo":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;->createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 955
    .end local v0    # "resultTo":J
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public refineLessThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 4
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 991
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 996
    .local v0, "resultTo":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;->createOrNothing(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 992
    .end local v0    # "resultTo":J
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public refineNotEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 9
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 1117
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    .line 1119
    iget-wide v5, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    sub-long/2addr v0, v3

    invoke-static {v5, v6, v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 1120
    :cond_0
    iget-wide v5, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v7, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_1

    .line 1121
    add-long/2addr v5, v3

    invoke-static {v5, v6, v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 1124
    :cond_1
    return-object p0
.end method

.method public remainder(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 11
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 638
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 641
    :cond_0
    iget-wide v0, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 642
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 645
    :cond_1
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    const-wide/16 v6, 0x1

    if-nez v0, :cond_5

    .line 648
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v8, v0, v4

    if-nez v8, :cond_3

    .line 649
    iget-wide v8, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_2

    .line 651
    invoke-static {v2, v3, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 656
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_2
    add-long/2addr v0, v6

    invoke-static {v0, v1, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    invoke-static {v2, v3, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .restart local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 662
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_3
    move-object v0, p0

    .line 667
    .restart local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :goto_0
    iget-wide v1, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v3, v1, v4

    if-lez v3, :cond_4

    .line 668
    iget-wide v3, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    add-long/2addr v3, v6

    invoke-static {v3, v4, v1, v2}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/common/value/util/Range;->remainder(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 669
    .local v1, "rangeAdditional":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 671
    .end local v1    # "rangeAdditional":Lorg/checkerframework/common/value/util/Range;
    :cond_4
    return-object v0

    .line 678
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_5
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 679
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v8, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 680
    invoke-static {v2, v3, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 685
    .local v0, "range1":Lorg/checkerframework/common/value/util/Range;
    iget-wide v1, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v3, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 686
    .local v1, "maxAbsolute":J
    neg-long v3, v1

    add-long/2addr v3, v6

    sub-long v5, v1, v6

    invoke-static {v3, v4, v5, v6}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 689
    .local v3, "range2":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v3}, Lorg/checkerframework/common/value/util/Range;->intersect(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 639
    .end local v0    # "range1":Lorg/checkerframework/common/value/util/Range;
    .end local v1    # "maxAbsolute":J
    .end local v3    # "range2":Lorg/checkerframework/common/value/util/Range;
    :cond_6
    :goto_1
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public shiftLeft(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 701
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 720
    :cond_0
    const-wide/16 v0, 0x1f

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 721
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isWithinInteger()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    :goto_0
    long-to-int v4, v4

    shl-long/2addr v0, v4

    .line 724
    .local v0, "resultFrom":J
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    :goto_1
    long-to-int v2, v2

    shl-long v2, v4, v2

    .line 725
    .local v2, "resultTo":J
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 727
    .end local v0    # "resultFrom":J
    .end local v2    # "resultTo":J
    :cond_3
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    .line 728
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 729
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_4

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    goto :goto_2

    :cond_4
    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    :goto_2
    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 730
    .local v0, "bigFrom":Ljava/math/BigInteger;
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    .line 731
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 732
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    goto :goto_3

    :cond_5
    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    :goto_3
    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 733
    .local v1, "bigTo":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 738
    .end local v0    # "bigFrom":Ljava/math/BigInteger;
    .end local v1    # "bigTo":Ljava/math/BigInteger;
    :cond_6
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 702
    :cond_7
    :goto_4
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public shortRange()Lorg/checkerframework/common/value/util/Range;
    .locals 6

    .line 305
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    return-object p0

    .line 308
    :cond_0
    sget-boolean v0, Lorg/checkerframework/common/value/util/Range;->ignoreOverflow:Z

    if-eqz v0, :cond_1

    .line 309
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v2, -0x8000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    const-wide/16 v4, 0x7fff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 311
    :cond_1
    sget-wide v0, Lorg/checkerframework/common/value/util/Range;->SHORT_WIDTH:J

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 315
    :cond_2
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    long-to-int v0, v0

    int-to-short v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    long-to-int v2, v2

    int-to-short v2, v2

    int-to-long v2, v2

    sget-object v4, Lorg/checkerframework/common/value/util/Range;->SHORT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/checkerframework/common/value/util/Range;->createOrElse(JJLorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public signedShiftRight(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 751
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 755
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isWithinInteger()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1f

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWithin(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    :goto_0
    long-to-int v4, v4

    shr-long/2addr v0, v4

    .line 758
    .local v0, "resultFrom":J
    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_2

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    :goto_1
    long-to-int v2, v2

    shr-long v2, v4, v2

    .line 759
    .local v2, "resultTo":J
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 763
    .end local v0    # "resultFrom":J
    .end local v2    # "resultTo":J
    :cond_3
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 752
    :cond_4
    :goto_2
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public times(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 10
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 514
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isWithinInteger()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isWithinInteger()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    new-array v0, v5, [Ljava/lang/Long;

    iget-wide v5, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v7, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    mul-long/2addr v5, v7

    .line 522
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    iget-wide v4, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v6, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    iget-wide v3, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v5, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 521
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 523
    .local v0, "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    .line 525
    .end local v0    # "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    iget-wide v6, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 526
    .local v0, "bigLeftFrom":Ljava/math/BigInteger;
    iget-wide v6, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 527
    .local v6, "bigRightFrom":Ljava/math/BigInteger;
    iget-wide v7, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 528
    .local v7, "bigRightTo":Ljava/math/BigInteger;
    iget-wide v8, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 529
    .local v8, "bigLeftTo":Ljava/math/BigInteger;
    new-array v5, v5, [Ljava/math/BigInteger;

    .line 531
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v5, v4

    .line 532
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v5, v3

    .line 533
    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v5, v2

    .line 534
    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v5, v1

    .line 530
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "bigPossibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    invoke-static {v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    return-object v2

    .line 515
    .end local v0    # "bigLeftFrom":Ljava/math/BigInteger;
    .end local v1    # "bigPossibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v6    # "bigRightFrom":Ljava/math/BigInteger;
    .end local v7    # "bigRightTo":Ljava/math/BigInteger;
    .end local v8    # "bigLeftTo":Ljava/math/BigInteger;
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "[]"

    return-object v0

    .line 198
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s..%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unaryMinus()Lorg/checkerframework/common/value/util/Range;
    .locals 4

    .line 902
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 906
    :cond_0
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 908
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 911
    :cond_1
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    neg-long v2, v2

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public unaryPlus()Lorg/checkerframework/common/value/util/Range;
    .locals 0

    .line 892
    return-object p0
.end method

.method public union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 6
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 406
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return-object p1

    .line 408
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    return-object p0

    .line 412
    :cond_1
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v2, p1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 413
    .local v0, "resultFrom":J
    iget-wide v2, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v4, p1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 414
    .local v2, "resultTo":J
    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4
.end method

.method public unsignedShiftRight(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 4
    .param p1, "right"    # Lorg/checkerframework/common/value/util/Range;

    .line 773
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 774
    invoke-virtual {p0, p1}, Lorg/checkerframework/common/value/util/Range;->signedShiftRight(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 781
    :cond_1
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 778
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0
.end method
