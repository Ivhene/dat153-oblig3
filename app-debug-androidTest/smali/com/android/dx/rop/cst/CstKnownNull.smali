.class public final Lcom/android/dx/rop/cst/CstKnownNull;
.super Lcom/android/dx/rop/cst/CstLiteralBits;
.source "CstKnownNull.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/dx/rop/cst/CstKnownNull;

    invoke-direct {v0}, Lcom/android/dx/rop/cst/CstKnownNull;-><init>()V

    sput-object v0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 1
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 39
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstKnownNull;

    return v0
.end method

.method public fitsInInt()Z
    .locals 1

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public getIntBits()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getLongBits()J
    .locals 2

    .line 110
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 45
    const v0, 0x4466757a

    return v0
.end method

.method public isCategory2()Z
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "null"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "known-null"

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "known-null"

    return-object v0
.end method
