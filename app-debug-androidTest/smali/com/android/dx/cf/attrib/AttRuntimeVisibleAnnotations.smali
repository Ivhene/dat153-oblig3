.class public final Lcom/android/dx/cf/attrib/AttRuntimeVisibleAnnotations;
.super Lcom/android/dx/cf/attrib/BaseAnnotations;
.source "AttRuntimeVisibleAnnotations.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "RuntimeVisibleAnnotations"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/annotation/Annotations;I)V
    .locals 1
    .param p1, "annotations"    # Lcom/android/dx/rop/annotation/Annotations;
    .param p2, "byteLength"    # I

    .line 38
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/dx/cf/attrib/BaseAnnotations;-><init>(Ljava/lang/String;Lcom/android/dx/rop/annotation/Annotations;I)V

    .line 39
    return-void
.end method