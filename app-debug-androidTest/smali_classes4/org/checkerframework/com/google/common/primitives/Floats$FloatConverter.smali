.class final Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;
.super Lorg/checkerframework/com/google/common/base/Converter;
.source "Floats.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/primitives/Floats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;-><init>()V

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/base/Converter;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 295
    sget-object v0, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 275
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;->doBackward(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doBackward(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;

    .line 286
    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 275
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/Floats$FloatConverter;->doForward(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 291
    const-string v0, "Floats.stringConverter()"

    return-object v0
.end method