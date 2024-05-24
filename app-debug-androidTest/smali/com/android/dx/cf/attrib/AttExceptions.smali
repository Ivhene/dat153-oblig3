.class public final Lcom/android/dx/cf/attrib/AttExceptions;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "AttExceptions.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Exceptions"


# instance fields
.field private final exceptions:Lcom/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/TypeList;)V
    .locals 3
    .param p1, "exceptions"    # Lcom/android/dx/rop/type/TypeList;

    .line 39
    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeList;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 48
    nop

    .line 50
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/android/dx/rop/type/TypeList;

    .line 51
    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    const-string v1, "exceptions.isMutable()"

    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .end local p1    # "exceptions":Lcom/android/dx/rop/type/TypeList;
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    .restart local p1    # "exceptions":Lcom/android/dx/rop/type/TypeList;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "exceptions == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getExceptions()Lcom/android/dx/rop/type/TypeList;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttExceptions;->exceptions:Lcom/android/dx/rop/type/TypeList;

    return-object v0
.end method
