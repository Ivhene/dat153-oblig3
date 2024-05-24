.class public final synthetic Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/nio/charset/Charset;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;->f$1:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda4;->f$1:Ljava/nio/charset/Charset;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-static {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->lambda$parse$1(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    return-void
.end method
