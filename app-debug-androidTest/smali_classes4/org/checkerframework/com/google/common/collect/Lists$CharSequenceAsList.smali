.class final Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharSequenceAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .line 766
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 767
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    .line 768
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Character;
    .locals 1
    .param p1, "index"    # I

    .line 772
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 773
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 763
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;->get(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
