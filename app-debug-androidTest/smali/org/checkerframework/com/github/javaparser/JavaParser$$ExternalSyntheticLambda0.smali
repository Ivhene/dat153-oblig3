.class public final synthetic Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/JavaParser$$ExternalSyntheticLambda0;->f$0:Ljava/nio/file/Path;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->lambda$parseStubUnit$6(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)V

    return-void
.end method
