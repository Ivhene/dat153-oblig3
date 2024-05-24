.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda4;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup$$ExternalSyntheticLambda4;->f$0:Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$new$4$org-checkerframework-com-github-javaparser-printer-lexicalpreservation-RemovedGroup(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
