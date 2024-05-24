.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

.field public final synthetic f$2:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$1:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$1:Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Void;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->lambda$null$5$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    return-void
.end method
