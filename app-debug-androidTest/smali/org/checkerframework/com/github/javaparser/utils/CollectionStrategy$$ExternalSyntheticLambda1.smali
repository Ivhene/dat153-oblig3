.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda1;->f$0:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda1;->f$0:Ljava/nio/file/Path;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy;->lambda$getRoot$0(Ljava/nio/file/Path;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method