.class Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "InterpolatorStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;

.field private static final PREFIX_SEPARATOR:C = ':'


# instance fields
.field private final defaultStringLookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

.field private final stringLookupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 55
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 70
    .local p1, "defaultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;->on(Ljava/util/Map;)Lorg/checkerframework/org/apache/commons/text/lookup/MapStringLookup;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Z)V
    .locals 5
    .param p2, "defaultStringLookup"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .param p3, "addDefaultLookups"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ">;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            "Z)V"
        }
    .end annotation

    .line 95
    .local p1, "stringLookupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;>;"
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 96
    iput-object p2, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;>;"
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;>;"
    goto :goto_0

    .line 101
    :cond_0
    if-eqz p3, :cond_1

    .line 102
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookupFactory;->addDefaultStringLookups(Ljava/util/Map;)V

    .line 104
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;)V
    .locals 2
    .param p1, "defaultStringLookup"    # Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;-><init>(Ljava/util/Map;Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;Z)V

    .line 81
    return-void
.end method

.method static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 116
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStringLookupMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "var"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 132
    return-object v0

    .line 135
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 136
    .local v1, "prefixPos":I
    if-ltz v1, :cond_3

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    .line 140
    .local v4, "lookup":Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    const/4 v5, 0x0

    .line 141
    .local v5, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 142
    invoke-interface {v4, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    :cond_1
    if-eqz v5, :cond_2

    .line 146
    return-object v5

    .line 148
    :cond_2
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 150
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "lookup":Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    if-eqz v2, :cond_4

    .line 151
    invoke-interface {v2, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [stringLookupMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->stringLookupMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultStringLookup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/lookup/InterpolatorStringLookup;->defaultStringLookup:Lorg/checkerframework/org/apache/commons/text/lookup/StringLookup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
