.class public final synthetic Lorg/checkerframework/framework/util/defaults/DefaultSet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/checkerframework/framework/util/defaults/Default;

    check-cast p2, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-virtual {p1, p2}, Lorg/checkerframework/framework/util/defaults/Default;->compareTo(Lorg/checkerframework/framework/util/defaults/Default;)I

    move-result p1

    return p1
.end method