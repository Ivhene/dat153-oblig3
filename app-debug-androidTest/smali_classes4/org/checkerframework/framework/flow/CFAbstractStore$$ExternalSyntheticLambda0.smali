.class public final synthetic Lorg/checkerframework/framework/flow/CFAbstractStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lorg/checkerframework/framework/flow/CFAbstractStore;->lambda$updateForMethodCall$0(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
