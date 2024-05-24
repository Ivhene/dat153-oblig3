.class public final Lcom/android/dx/cf/attrib/AttEnclosingMethod;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "AttEnclosingMethod.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "EnclosingMethod"


# instance fields
.field private final method:Lcom/android/dx/rop/cst/CstNat;

.field private final type:Lcom/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 2
    .param p1, "type"    # Lcom/android/dx/rop/cst/CstType;
    .param p2, "method"    # Lcom/android/dx/rop/cst/CstNat;

    .line 44
    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->type:Lcom/android/dx/rop/cst/CstType;

    .line 51
    iput-object p2, p0, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->method:Lcom/android/dx/rop/cst/CstNat;

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 57
    const/16 v0, 0xa

    return v0
.end method

.method public getEnclosingClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->type:Lcom/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getMethod()Lcom/android/dx/rop/cst/CstNat;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttEnclosingMethod;->method:Lcom/android/dx/rop/cst/CstNat;

    return-object v0
.end method
