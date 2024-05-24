.class public final Lorg/checkerframework/com/google/common/graph/ElementOrder;
.super Ljava/lang/Object;
.source "ElementOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V
    .locals 4
    .param p1, "type"    # Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    .line 72
    iput-object p2, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    .line 73
    sget-object v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->SORTED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(Z)V

    .line 74
    return-void
.end method

.method public static insertion()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TS;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    sget-object v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->INSERTION:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ElementOrder;-><init>(Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static natural()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "-TS;>;>()",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TS;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    sget-object v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->SORTED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Ordering;->natural()Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ElementOrder;-><init>(Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static sorted(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TS;>;)",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TS;>;"
        }
    .end annotation

    .line 98
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TS;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    sget-object v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->SORTED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-direct {v0, v1, p0}, Lorg/checkerframework/com/google/common/graph/ElementOrder;-><init>(Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static unordered()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TS;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    sget-object v1, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->UNORDERED:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/graph/ElementOrder;-><init>(Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method cast()Lorg/checkerframework/com/google/common/graph/ElementOrder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:TT;>()",
            "Lorg/checkerframework/com/google/common/graph/ElementOrder<",
            "TT1;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    return-object p0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 113
    return-object v0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ordering does not define a comparator."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createMap(I)Ljava/util/Map;
    .locals 2
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TT;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    sget-object v0, Lorg/checkerframework/com/google/common/graph/ElementOrder$1;->$SwitchMap$com$google$common$graph$ElementOrder$Type:[I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0

    .line 151
    :pswitch_1
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    .line 149
    :pswitch_2
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 121
    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 124
    return v2

    .line 127
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;

    .line 128
    .local v1, "other":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<*>;"
    iget-object v3, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    iget-object v4, v1, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 133
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 138
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 139
    .local v0, "helper":Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 140
    const-string v2, "comparator"

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;

    .line 142
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;
    .locals 1

    .line 103
    .local p0, "this":Lorg/checkerframework/com/google/common/graph/ElementOrder;, "Lorg/checkerframework/com/google/common/graph/ElementOrder<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/graph/ElementOrder;->type:Lorg/checkerframework/com/google/common/graph/ElementOrder$Type;

    return-object v0
.end method
