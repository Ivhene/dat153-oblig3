.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

.field public final synthetic f$1:Ljava/lang/Void;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;->f$1:Ljava/lang/Void;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;->f$0:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;->f$1:Ljava/lang/Void;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->lambda$visit$11$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V

    return-void
.end method
