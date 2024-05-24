.class public final Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RefreshDurationParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$WriteDurationParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$AccessDurationParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$DurationParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RecordStatsParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueStrengthParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumWeightParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumSizeParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$InitialCapacityParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$LongParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$IntegerParser;,
        Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;
    }
.end annotation


# static fields
.field private static final KEYS_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

.field private static final KEY_VALUE_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

.field private static final VALUE_PARSERS:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accessExpirationDuration:J

.field accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

.field concurrencyLevel:Ljava/lang/Integer;

.field initialCapacity:Ljava/lang/Integer;

.field keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field maximumSize:Ljava/lang/Long;

.field maximumWeight:Ljava/lang/Long;

.field recordStats:Ljava/lang/Boolean;

.field refreshDuration:J

.field refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final specification:Ljava/lang/String;

.field valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

.field writeExpirationDuration:J

.field writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    const/16 v0, 0x2c

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->on(C)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->trimResults()Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    .line 92
    const/16 v0, 0x3d

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->on(C)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->trimResults()Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    .line 96
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->builder()Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$InitialCapacityParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$InitialCapacityParser;-><init>()V

    .line 97
    const-string v2, "initialCapacity"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumSizeParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumSizeParser;-><init>()V

    .line 98
    const-string v2, "maximumSize"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumWeightParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$MaximumWeightParser;-><init>()V

    .line 99
    const-string v2, "maximumWeight"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ConcurrencyLevelParser;-><init>()V

    .line 100
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;

    sget-object v2, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$KeyStrengthParser;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)V

    .line 101
    const-string v2, "weakKeys"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v2, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->SOFT:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)V

    .line 102
    const-string v2, "softValues"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueStrengthParser;

    sget-object v2, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->WEAK:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueStrengthParser;-><init>(Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;)V

    .line 103
    const-string v2, "weakValues"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RecordStatsParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RecordStatsParser;-><init>()V

    .line 104
    const-string v2, "recordStats"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$AccessDurationParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$AccessDurationParser;-><init>()V

    .line 105
    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$WriteDurationParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$WriteDurationParser;-><init>()V

    .line 106
    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 107
    const-string v2, "refreshAfterWrite"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RefreshDurationParser;

    invoke-direct {v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$RefreshDurationParser;-><init>()V

    .line 108
    const-string v2, "refreshInterval"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "specification"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 82
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableCaching()Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    .locals 1

    .line 163
    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method private static durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 2
    .param p0, "duration"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 283
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 478
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    .locals 9
    .param p0, "cacheBuilderSpecification"    # Ljava/lang/String;

    .line 137
    new-instance v0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "spec":Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 139
    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->KEYS_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    invoke-virtual {v1, p0}, Lorg/checkerframework/com/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "keyValuePair":Ljava/lang/String;
    sget-object v3, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->KEY_VALUE_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    invoke-virtual {v3, v2}, Lorg/checkerframework/com/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3

    .line 141
    .local v3, "keyAndValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v6, "blank key-value pair"

    invoke-static {v4, v6}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    nop

    .line 143
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-gt v4, v6, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v7

    .line 142
    :goto_1
    const-string v6, "key-value pair %s with more than one equals sign"

    invoke-static {v4, v6, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 148
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "key":Ljava/lang/String;
    sget-object v6, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->VALUE_PARSERS:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;

    .line 150
    .local v6, "valueParser":Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;
    if-eqz v6, :cond_1

    move v7, v5

    :cond_1
    const-string v8, "unknown key %s"

    invoke-static {v7, v8, v4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 153
    .local v5, "value":Ljava/lang/String;
    :goto_2
    invoke-interface {v6, v0, v4, v5}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;->parse(Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v2    # "keyValuePair":Ljava/lang/String;
    .end local v3    # "keyAndValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "valueParser":Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$ValueParser;
    goto :goto_0

    .line 157
    :cond_3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 253
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 254
    return v0

    .line 256
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 257
    return v2

    .line 259
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;

    .line 260
    .local v1, "that":Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;
    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    .line 261
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    .line 262
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    .line 263
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 264
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    .line 265
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 266
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-static {v3, v4, v5}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v6, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-static {v4, v5, v6}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 267
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 271
    invoke-static {v3, v4, v5}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v6, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 272
    invoke-static {v4, v5, v6}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 270
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 274
    invoke-static {v3, v4, v5}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v6, v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 275
    invoke-static {v4, v5, v6}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v4

    .line 273
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 260
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 12

    .line 238
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    iget-object v3, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    iget-object v4, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v5, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    iget-object v6, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    iget-wide v7, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    iget-object v9, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 246
    invoke-static {v7, v8, v9}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    iget-object v10, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 247
    invoke-static {v8, v9, v10}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    iget-object v11, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 248
    invoke-static {v9, v10, v11}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->durationInNanos(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method toCacheBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->newBuilder()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 169
    .local v0, "builder":Lorg/checkerframework/com/google/common/cache/CacheBuilder;, "Lorg/checkerframework/com/google/common/cache/CacheBuilder<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->initialCapacity:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->initialCapacity(I)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumSize(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 175
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->maximumWeight:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->maximumWeight(J)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 178
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->concurrencyLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 181
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_4

    .line 182
    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->keyStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 184
    :pswitch_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weakKeys()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 185
    nop

    .line 190
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_5

    .line 191
    sget-object v1, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec$1;->$SwitchMap$com$google$common$cache$LocalCache$Strength:[I

    iget-object v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->valueStrength:Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 199
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 193
    :pswitch_1
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->softValues()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 194
    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->weakValues()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 197
    nop

    .line 202
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->recordStats()Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 205
    :cond_6
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_7

    .line 206
    iget-wide v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->writeExpirationDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 208
    :cond_7
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_8

    .line 209
    iget-wide v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->accessExpirationDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 211
    :cond_8
    iget-object v1, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_9

    .line 212
    iget-wide v2, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->refreshDuration:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/checkerframework/com/google/common/cache/CacheBuilder;->refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/cache/CacheBuilder;

    .line 215
    :cond_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toParsableString()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->specification:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 233
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/cache/CacheBuilderSpec;->toParsableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method