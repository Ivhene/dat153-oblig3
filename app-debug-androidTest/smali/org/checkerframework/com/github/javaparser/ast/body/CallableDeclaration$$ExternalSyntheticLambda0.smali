.class public final synthetic Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->$r8$lambda$2tgRs3Wlujsw6UzO5ik_tAOb4YI(Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object p1

    return-object p1
.end method