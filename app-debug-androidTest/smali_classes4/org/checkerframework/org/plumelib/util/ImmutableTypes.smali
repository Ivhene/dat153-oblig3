.class public Lorg/checkerframework/org/plumelib/util/ImmutableTypes;
.super Ljava/lang/Object;
.source "ImmutableTypes.java"


# static fields
.field public static immutableTypeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    .line 28
    const-string v1, "boolean"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "byte"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "char"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "double"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "float"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "int"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "long"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "short"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "com.sun.jmx.snmp.ThreadContext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "com.sun.security.auth.LdapPrincipal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "com.sun.security.auth.UserPrincipal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.AWTEventMulticaster"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.AWTKeyStroke"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.BasicStroke"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.Color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.Composite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.Cursor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.Font"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.GradientPaint,"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.LinearGradientPaint"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.RadialGradientPaint,"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.RenderingHints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.font.GlyphMetrics"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.font.GraphicAttribute"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.awt.font.TextLayout"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.io.File"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.io.ObjectStreamClass"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.lang.Class"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.lang.String"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.lang.StackTraceElement"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.lang.invoke.MethodHandle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.lang.invoke.MethodType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.math.BigDecimal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.math.BigInteger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.math.MathContext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.Inet4Address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.Inet6Address"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.InetAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.InetSocketAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.Proxy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.SocketAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.URI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.net.URL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.nio.charset.Charset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.nio.file.Path"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.nio.file.WatchEvent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.nio.file.attribute.AclEntry"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.nio.file.attribute.FileTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.AlgorithmConstraints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.CodeSigner"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.Permission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.Provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.Timestamp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.cert.CertPath"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.cert.PolicyNode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.cert.PolicyQualifierInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.cert.TrustAnchor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.DSAGenParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECFieldF2m"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECFieldFp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECGenParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECPoint"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECPrivateKeySpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.ECPublicKeySpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.security.spec.EllipticCurve"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.text.AttributedCharacterIterator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Clock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.DateTimeException"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.DayOfWeek"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Duration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Instant"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.LocalDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.LocalDateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.LocalTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Month"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.MonthDay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.OffsetDateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.OffsetTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Period"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Ser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.Year"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.YearMonth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.ZoneId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.ZoneOffset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.ZoneRegion"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.ZonedDateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.AbstractChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoLocalDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoLocalDateImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoLocalDateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoLocalDateTimeImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoPeriod"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoPeriodImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoZonedDateTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ChronoZonedDateTimeImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.Chronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.Era"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.HijrahChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.HijrahDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.HijrahEra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.IsoChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.IsoEra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.JapaneseChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.JapaneseDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.JapaneseEra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.MinguoChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.MinguoDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.MinguoEra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.Ser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ThaiBuddhistChronology"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ThaiBuddhistDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.chrono.ThaiBuddhistEra"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimeFormatter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimeFormatterBuilder"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimeParseContext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimeParseException"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimePrintContext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DateTimeTextProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.DecimalStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.FormatStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.Parsed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.ResolverStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.SignStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.format.TextStyle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.ChronoField"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.ChronoUnit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.IsoFields"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.JulianFields"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.Temporal"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalAccessor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalAdjuster"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalAdjusters"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalAmount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalField"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalQueries"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalQuery"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.TemporalUnit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.UnsupportedTemporalTypeException"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.ValueRange"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.temporal.WeekFields"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.Ser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.TzdbZoneRulesProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.ZoneOffsetTransition"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.ZoneOffsetTransitionRule"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.ZoneRules"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.ZoneRulesException"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.time.zone.ZoneRulesProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.util.Locale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.util.UUID"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "java.util.regex.Pattern"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.naming.StringRefAddr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.net.ssl.CertPathTrustManagerParameters"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.net.ssl.SNIHostName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.net.ssl.SNIMatcher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.net.ssl.SNIServerName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.DateTimeSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.IntegerSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.ResolutionSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.SetOfIntegerSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.Size2DSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.TextSyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.print.attribute.URISyntax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.smartcardio.ATR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.smartcardio.CommandAPDU"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.smartcardio.ResponseAPDU"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.swing.KeyStroke"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.swing.plaf.synth.SynthContext"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.swing.text.TabSet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "javax.swing.text.TabStop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.awt.SunHints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.awt.im.InputMethodLocator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.jvmstat.perfdata.monitor.MonitorStatus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.net.www.protocol.http.HttpCallerInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.internal.spec.TlsKeyMaterialParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.internal.spec.TlsKeyMaterialSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.internal.spec.TlsMasterSecretParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.internal.spec.TlsPrfParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.internal.spec.TlsRsaPremasterSecretParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.jca.ProviderList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.krb5.PrincipalName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.krb5.Realm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.krb5.internal.KerberosTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.provider.certpath.PolicyNodeImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.ssl.CipherSuite"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.ssl.CipherSuiteList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.ssl.HelloExtensions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.ssl.ProtocolList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.util.ECKeySizeParameterSpec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.validator.PKIXValidator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.validator.SimpleValidator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.x509.AVA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.x509.RDN"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    const-string v1, "sun.security.x509.X500Name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImmutable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;

    .line 232
    sget-object v0, Lorg/checkerframework/org/plumelib/util/ImmutableTypes;->immutableTypeNames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
