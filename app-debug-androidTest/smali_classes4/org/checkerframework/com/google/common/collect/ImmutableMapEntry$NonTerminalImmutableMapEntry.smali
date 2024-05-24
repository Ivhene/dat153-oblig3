.class Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonTerminalImmutableMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInKeyBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextInKeyBucket":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;->nextInKeyBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    .line 80
    return-void
.end method


# virtual methods
.method final getNextInKeyBucket()Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;->nextInKeyBucket:Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method final isReusable()Z
    .locals 1

    .line 89
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;, "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
