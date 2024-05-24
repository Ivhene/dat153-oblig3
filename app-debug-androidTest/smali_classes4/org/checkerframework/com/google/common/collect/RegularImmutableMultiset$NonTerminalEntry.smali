.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;
.super Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonTerminalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final nextInBucket:Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;)V
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I",
            "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    .local p3, "nextInBucket":Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    .line 143
    iput-object p3, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;->nextInBucket:Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;

    .line 144
    return-void
.end method


# virtual methods
.method public nextInBucket()Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;, "Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableMultiset$NonTerminalEntry;->nextInBucket:Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;

    return-object v0
.end method
