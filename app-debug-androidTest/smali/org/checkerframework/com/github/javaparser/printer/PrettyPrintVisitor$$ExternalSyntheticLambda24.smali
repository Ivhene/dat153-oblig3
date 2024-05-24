.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Class;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->$r8$lambda$UZs1ZIbU3D_z60K6ZAGNTDf0FkU(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
