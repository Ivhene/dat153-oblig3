.class public final synthetic Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText$$ExternalSyntheticLambda0;->f$0:Ljava/lang/StringBuffer;

    check-cast p1, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/NodeText;->lambda$expand$0(Ljava/lang/StringBuffer;Lorg/checkerframework/com/github/javaparser/printer/lexicalpreservation/TextElement;)V

    return-void
.end method
