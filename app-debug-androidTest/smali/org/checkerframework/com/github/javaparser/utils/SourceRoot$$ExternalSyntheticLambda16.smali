.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

.field public final synthetic f$1:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;->f$1:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;->f$1:Ljava/nio/file/Path;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->lambda$callback$8$org-checkerframework-com-github-javaparser-utils-SourceRoot(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
