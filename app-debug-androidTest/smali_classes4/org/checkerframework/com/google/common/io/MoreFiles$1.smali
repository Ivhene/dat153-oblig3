.class final Lorg/checkerframework/com/google/common/io/MoreFiles$1;
.super Ljava/lang/Object;
.source "MoreFiles.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/graph/SuccessorsFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/MoreFiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/graph/SuccessorsFunction<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 296
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/io/MoreFiles$1;->successors(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/nio/file/Path;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 299
    invoke-static {p1}, Lorg/checkerframework/com/google/common/io/MoreFiles;->access$300(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
