.class public final Lcom/android/dx/cf/attrib/AttInnerClasses;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "AttInnerClasses.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "InnerClasses"


# instance fields
.field private final innerClasses:Lcom/android/dx/cf/attrib/InnerClassList;


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/attrib/InnerClassList;)V
    .locals 3
    .param p1, "innerClasses"    # Lcom/android/dx/cf/attrib/InnerClassList;

    .line 37
    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/cf/attrib/InnerClassList;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 46
    nop

    .line 48
    iput-object p1, p0, Lcom/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/android/dx/cf/attrib/InnerClassList;

    .line 49
    return-void

    .line 41
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    const-string v1, "innerClasses.isMutable()"

    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .end local p1    # "innerClasses":Lcom/android/dx/cf/attrib/InnerClassList;
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .restart local p1    # "innerClasses":Lcom/android/dx/cf/attrib/InnerClassList;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "innerClasses == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/android/dx/cf/attrib/InnerClassList;

    invoke-virtual {v0}, Lcom/android/dx/cf/attrib/InnerClassList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getInnerClasses()Lcom/android/dx/cf/attrib/InnerClassList;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttInnerClasses;->innerClasses:Lcom/android/dx/cf/attrib/InnerClassList;

    return-object v0
.end method
