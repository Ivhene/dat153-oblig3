.class final enum Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;
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
    name = "UnencodedCharsFunnel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;",
        ">;",
        "Lorg/checkerframework/com/google/common/hash/Funnel<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

.field public static final enum INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->INSTANCE:Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    .line 64
    filled-new-array {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;
    .locals 1

    .line 64
    sget-object v0, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->$VALUES:[Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    invoke-virtual {v0}, [Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/CharSequence;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "into"    # Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 69
    invoke-interface {p2, p1}, Lorg/checkerframework/com/google/common/hash/PrimitiveSink;->putUnencodedChars(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/hash/PrimitiveSink;

    .line 70
    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/hash/Funnels$UnencodedCharsFunnel;->funnel(Ljava/lang/CharSequence;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "Funnels.unencodedCharsFunnel()"

    return-object v0
.end method