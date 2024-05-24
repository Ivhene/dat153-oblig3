.class public interface abstract Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;
.super Ljava/lang/Object;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$AbstractBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "ComponentTypeReference"
.end annotation


# static fields
.field public static final NO_ARRAY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 567
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/pool/TypePool$AbstractBase$ComponentTypeReference;->NO_ARRAY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract resolve()Ljava/lang/String;
.end method
