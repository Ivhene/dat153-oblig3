.class final Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonTerminalImmutableBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInValueBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p4, "nextInValueBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V

    .line 103
    iput-object p4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 104
    return-void
.end method


# virtual methods
.method getNextInValueBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method
