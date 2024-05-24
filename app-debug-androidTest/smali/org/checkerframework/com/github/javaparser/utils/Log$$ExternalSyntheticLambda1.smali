.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:[Ljava/util/function/Supplier;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>([Ljava/util/function/Supplier;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;->f$0:[Ljava/util/function/Supplier;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;->f$0:[Ljava/util/function/Supplier;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->lambda$makeFormattingSupplier$0([Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
