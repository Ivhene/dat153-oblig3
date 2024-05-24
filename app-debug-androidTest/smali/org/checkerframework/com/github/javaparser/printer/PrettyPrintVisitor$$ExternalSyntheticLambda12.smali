.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;->f$0:Lorg/checkerframework/com/github/javaparser/ast/Node;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
