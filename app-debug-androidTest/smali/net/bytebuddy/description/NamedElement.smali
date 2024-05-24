.class public interface abstract Lnet/bytebuddy/description/NamedElement;
.super Ljava/lang/Object;
.source "NamedElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/NamedElement$WithDescriptor;,
        Lnet/bytebuddy/description/NamedElement$WithGenericName;,
        Lnet/bytebuddy/description/NamedElement$WithOptionalName;,
        Lnet/bytebuddy/description/NamedElement$WithRuntimeName;
    }
.end annotation


# static fields
.field public static final EMPTY_NAME:Ljava/lang/String; = ""

.field public static final NO_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/description/NamedElement;->NO_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getActualName()Ljava/lang/String;
.end method
