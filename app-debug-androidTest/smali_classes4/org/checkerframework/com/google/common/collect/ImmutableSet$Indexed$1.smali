.class Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;
.super Lorg/checkerframework/com/google/common/collect/ImmutableAsList;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;->createAsList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableAsList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableAsList;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableCollection;
    .locals 1

    .line 373
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;->delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;

    move-result-object v0

    return-object v0
.end method

.method delegateCollection()Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed<",
            "TE;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 376
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
