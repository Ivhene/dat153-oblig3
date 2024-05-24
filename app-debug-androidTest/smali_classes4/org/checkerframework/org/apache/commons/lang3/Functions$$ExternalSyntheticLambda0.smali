.class public final synthetic Lorg/checkerframework/org/apache/commons/lang3/Functions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/lang3/Functions$FailableConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/lang3/Functions;->lambda$tryWithResources$0(Ljava/lang/Throwable;)V

    return-void
.end method
