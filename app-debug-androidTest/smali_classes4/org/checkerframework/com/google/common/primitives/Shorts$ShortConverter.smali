.class final Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;
.super Lorg/checkerframework/com/google/common/base/Converter;
.source "Shorts.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 353
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 333
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;->doBackward(Ljava/lang/Short;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Short;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Short;

    .line 344
    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 333
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Shorts$ShortConverter;->doForward(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Short;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 339
    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 349
    const-string v0, "Shorts.stringConverter()"

    return-object v0
.end method
