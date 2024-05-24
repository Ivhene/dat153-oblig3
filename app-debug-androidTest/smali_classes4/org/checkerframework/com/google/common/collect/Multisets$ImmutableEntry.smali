.class Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;
.super Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmutableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final count:I

.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 253
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 254
    iput p2, p0, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;->count:I

    .line 255
    const-string v0, "count"

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 256
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 265
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public nextInBucket()Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry;, "Lorg/checkerframework/com/google/common/collect/Multisets$ImmutableEntry<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method
