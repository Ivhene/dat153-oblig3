.class public final synthetic Lorg/checkerframework/com/google/common/collect/Streams$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/util/stream/Stream;


# direct methods
.method public synthetic constructor <init>([Ljava/util/stream/Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Streams$$ExternalSyntheticLambda8;->f$0:[Ljava/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Streams$$ExternalSyntheticLambda8;->f$0:[Ljava/util/stream/Stream;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Streams;->lambda$concat$1([Ljava/util/stream/Stream;)V

    return-void
.end method