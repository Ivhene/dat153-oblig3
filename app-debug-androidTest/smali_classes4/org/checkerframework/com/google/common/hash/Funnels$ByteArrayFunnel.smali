.class final enum Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ByteArrayFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;",
        ">;",
        "Lorg/checkerframework/com/google/common/hash/Funnel<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

.field public static final enum INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    .line 39
    filled-new-array {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;
    .locals 1

    .line 39
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 39
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Funnels$ByteArrayFunnel;->funnel([BLorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public funnel([BLorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0
    .param p1, "from"    # [B
    .param p2, "into"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 44
    invoke-interface {p2, p1}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putBytes([B)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "Funnels.byteArrayFunnel()"

    return-object v0
.end method
