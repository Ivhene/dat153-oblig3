.class public abstract enum Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;
.super Ljava/lang/Enum;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Sort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

.field public static final enum ENTER:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

.field public static final enum EXIT:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1457
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort$1;

    const-string v1, "ENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->ENTER:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    .line 1467
    new-instance v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort$2;

    const-string v3, "EXIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->EXIT:Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    .line 1452
    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1452
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/bytebuddy/asm/Advice$1;

    .line 1452
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1452
    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;
    .locals 1

    .line 1452
    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Sort;

    return-object v0
.end method


# virtual methods
.method public abstract isPremature(Lnet/bytebuddy/description/method/MethodDescription;)Z
.end method
