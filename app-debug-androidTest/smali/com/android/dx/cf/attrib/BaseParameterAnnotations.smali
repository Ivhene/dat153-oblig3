.class public abstract Lcom/android/dx/cf/attrib/BaseParameterAnnotations;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "BaseParameterAnnotations.java"


# instance fields
.field private final byteLength:I

.field private final parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/annotation/AnnotationsList;I)V
    .locals 3
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "parameterAnnotations"    # Lcom/android/dx/rop/annotation/AnnotationsList;
    .param p3, "byteLength"    # I

    .line 43
    invoke-direct {p0, p1}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 46
    :try_start_0
    invoke-virtual {p2}, Lcom/android/dx/rop/annotation/AnnotationsList;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 53
    nop

    .line 55
    iput-object p2, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;

    .line 56
    iput p3, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->byteLength:I

    .line 57
    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/dx/util/MutabilityException;

    const-string v1, "parameterAnnotations.isMutable()"

    invoke-direct {v0, v1}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .end local p1    # "attributeName":Ljava/lang/String;
    .end local p2    # "parameterAnnotations":Lcom/android/dx/rop/annotation/AnnotationsList;
    .end local p3    # "byteLength":I
    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .restart local p1    # "attributeName":Ljava/lang/String;
    .restart local p2    # "parameterAnnotations":Lcom/android/dx/rop/annotation/AnnotationsList;
    .restart local p3    # "byteLength":I
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parameterAnnotations == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final byteLength()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->byteLength:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final getParameterAnnotations()Lcom/android/dx/rop/annotation/AnnotationsList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/dx/cf/attrib/BaseParameterAnnotations;->parameterAnnotations:Lcom/android/dx/rop/annotation/AnnotationsList;

    return-object v0
.end method
