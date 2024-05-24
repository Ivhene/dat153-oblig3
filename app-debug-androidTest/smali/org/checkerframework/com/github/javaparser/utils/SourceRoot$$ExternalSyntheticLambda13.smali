.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/Path;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;->f$0:Ljava/nio/file/Path;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;->f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;->f$0:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;->f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->lambda$tryToParse$3(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
