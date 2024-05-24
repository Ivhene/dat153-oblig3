.class Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
.super Lorg/checkerframework/com/google/common/collect/ImmutableEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;,
        Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    invoke-static {p1, p2}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p1, "contents":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method static createEntryArray(I)[Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    new-array v0, p0, [Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method


# virtual methods
.method getNextInKeyBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method getNextInValueBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method isReusable()Z
    .locals 1

    .line 71
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method
